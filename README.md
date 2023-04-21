# ssi-template
《中国科学：信息科学》中文版 LaTeX 模板

《中国科学：信息科学》官方要求用 LaTeX 投稿，但提供的模板居然在 Texlive 下面编译不通。究其原因是这个模板使用了多个已作古的宏包，设置了不兼容参数，并使用 GBK 而非 UTF8 编码所致。此宏包基于 ssi-template 2023 版本，修正了这些问题，在 Texlive 2023 下面使用 xelatex 课正常编译。

## GBK 支持

模板默认字体为 Fandol，是一套集成在 Texlive 中的免费的中文字体，但只支持 GB2312 字符集，导致一些 GBK 字符无法显示（主要是一些作者姓名，大家都懂的）。这种情况下，可以修改默认字体设置来实现，在 SCIR2023cn.cls中，修改 `LoadPackage[fontset=fandol]{ctexart}` 语句中的 fandol 为 `windowsnew` 或 `macnew` 即可。Linux 下建议安装合法 Windows 字体，然后选 `windowsnew` 即可。

## 参考资料

1. https://stone-zeng.github.io/2019-10-26-compile-cct-template/
