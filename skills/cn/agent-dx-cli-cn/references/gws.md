# GWS 实践

用 GWS 验证命令、契约、请求和输出的对应关系。
保留目标提供方的命名、header、游标、认证和文件边界。

## 1. 读取契约

```sh
gws drive files list --help
gws schema drive.files.list
gws schema drive.File
```

按当前 help/schema 确定命令和字段。schema 查询不需要业务凭据。
核对参数、请求体和响应类型。按需读取引用类型。

## 2. 实现契约

| 对象 | 实现与验证 |
| --- | --- |
| 命令树 | 从 Discovery 生成 `SERVICE RESOURCE [SUBRESOURCE] METHOD`。helper 使用 `+` 前缀。 |
| 输入 | URL/query 放入 `--params`。嵌套正文放入 `--json`。只显示适用 flags。 |
| 方法 schema | 返回 `httpMethod`、`path`、`description`、`parameters`、`scopes`。按方法返回 `parameterOrder`、`requestBody` 和 `response`。正文类型包含 `schemaRef` 和 `schema`。 |
| 类型引用 | 默认保留嵌套 `$ref`。`--resolve-refs` 请求展开。目标 CLI 限制循环、深度和体积。 |
| 描述 | 说明对象、前置、直接影响和完成边界。将约束放入类型契约。 |
| 输出 | 默认返回原生 API JSON。`--format json/table/yaml/csv` 控制展示。`--output PATH`/`-o` 指定二进制路径。 |
| 文件 | 仅在支持媒体上传的方法中提供 `--upload` 和 `--upload-content-type`。 |

Discovery 投影不等于完整 JSON Schema 校验。展示实际接受的全局参数，保留真实约束。
scopes 表示提供方声明。它不证明当前权限，也不表示所有 scope 都必需。
description 是说明，不是可执行策略或当前状态。它足以表达含义时，直接使用 description。

## 3. 验证有界读取

在已授权环境运行：

```sh
gws drive files list \
  --params '{"pageSize":10,"fields":"files(id,name),nextPageToken"}' \
  --page-all --page-limit 2 --format json
```

- 使用 API 原生字段掩码。
- 最多读取两页。NDJSON 每行一页。
- 保留续读游标，并说明是否读完。
- 说明字段裁剪发生在客户端还是服务端。

固定版本默认最多读取 10 页，页间延迟 100 毫秒。用 `--page-limit` 和 `--page-delay` 显式设置限制。

## 4. 验证预演

```sh
gws schema drive.files.create
gws drive files create \
  --json '{"name":"dx-preview.txt"}' \
  --dry-run
```

核对 `dry_run`、`url`、`method`、`query_params`、`body` 和 `is_multipart_upload`。检查秘密脱敏。
参考 GWS 的预演可能初始化认证。
若目标 CLI 声明纯本地预演，按主技能证明业务 HTTP、凭据访问和恢复写入均为零。
单独声明元数据发现读取。

## 5. 验证适配

- 若支持 `@FILE` 或 `-`/stdin，声明为目标扩展。限制输入大小，严格解析 JSON。每次只允许一个 stdin 来源。
- 通过私密文件、stdin 或凭据引用输入秘密。沿用目标提供方的认证与最小权限。
- 迁移 flag 时保留原有含义。对照 HTTP 请求与可观察行为验证差异。
- 验证结构化 JSON 写 stdout，诊断写 stderr。退出码：0 成功；1 API；2 认证；3 校验；4 发现；5 内部错误。
- 若任务要求 MCP，使用兼容的官方 SDK 和公共类型化执行器。直接调用执行器，并独立验证接口。固定参考源码没有 MCP 入口。
- 若使用外部响应清洗服务，先显式配置。保留正文和来源。清洗结果仍按数据处理。

参考版本：[GWS 0.22.5，commit a3768d0e82ad83cca2da97724e46bea4ff0e6dbd](https://github.com/googleworkspace/cli/tree/a3768d0e82ad83cca2da97724e46bea4ff0e6dbd/crates/google-workspace-cli/src)。更换版本后重新核对。
