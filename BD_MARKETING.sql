USE [BD_MARKETING]
GO
/****** Object:  Table [dbo].[TB_CLIENTE]    Script Date: 26/10/2023 21:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CLIENTE](
	[ID_CLIENTE] [int] NOT NULL,
	[NM_CLIENTE] [varchar](50) NOT NULL,
	[ENDERECO] [varchar](50) NOT NULL,
	[UF] [varchar](2) NOT NULL,
	[SEXO] [varchar](1) NOT NULL,
	[TELEFONE] [numeric](18, 0) NOT NULL,
	[CPF] [varchar](50) NOT NULL,
	[RG] [varchar](50) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TB_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_CURSO]    Script Date: 26/10/2023 21:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CURSO](
	[ID_CURSO] [int] NOT NULL,
	[NM_CURSO] [varchar](50) NOT NULL,
	[TEMPO_DURACAO] [int] NOT NULL,
	[TIPO_CURSO] [varchar](50) NOT NULL,
	[MODALIDADE_CURSO] [varchar](50) NOT NULL,
	[VALOR_CURSO] [float] NOT NULL,
 CONSTRAINT [PK_TB_CURSO] PRIMARY KEY CLUSTERED 
(
	[ID_CURSO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_PROSPECCAO]    Script Date: 26/10/2023 21:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PROSPECCAO](
	[ID_CADASTRO] [int] NOT NULL,
	[NM_ALUNO] [varchar](50) NOT NULL,
	[ENDERECO] [varchar](250) NOT NULL,
	[CIDADE] [varchar](50) NOT NULL,
	[UF] [varchar](2) NOT NULL,
	[TELEFONE] [varchar](15) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[RG] [varchar](20) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[DT_NASCIMENTO] [date] NOT NULL,
	[DEFICIENCIA] [varchar](50) NOT NULL,
	[SEXO] [varchar](1) NOT NULL,
	[ESTADO_CIVIL] [varchar](50) NOT NULL,
	[NOME_MAE] [varchar](50) NOT NULL,
	[NOME_PAI] [varchar](50) NOT NULL,
	[CURSO_INTERESSE] [varchar](50) NOT NULL,
	[CANAL] [varchar](50) NOT NULL,
	[TEMPO_TELA] [timestamp] NOT NULL,
	[INTERACOES] [int] NOT NULL,
 CONSTRAINT [PK_TB_PROSPECCAO] PRIMARY KEY CLUSTERED 
(
	[ID_CADASTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_VENDAS]    Script Date: 26/10/2023 21:20:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_VENDAS](
	[ID_VENDA] [nchar](10) NOT NULL,
	[DATA_HORA_VENDA] [timestamp] NOT NULL,
	[ID_CURSO] [int] NOT NULL,
	[NM_CURSO] [varchar](50) NOT NULL,
	[ID_CLIENTE] [int] NOT NULL,
	[NM_CLIENTE] [varchar](50) NOT NULL,
	[CANAL_VENDAS] [varchar](50) NOT NULL,
	[MODALIDADE_CURSO] [varchar](50) NOT NULL,
	[VALOR_CURSO] [float] NOT NULL,
	[VALOR_DESCONTO] [float] NOT NULL,
	[TIPO_DESCONTO] [varchar](50) NOT NULL,
	[DESC_DESCONTO] [varchar](50) NOT NULL,
	[VALOR_LIQUIDO] [float] NOT NULL,
 CONSTRAINT [PK_TB_VENDAS] PRIMARY KEY CLUSTERED 
(
	[ID_VENDA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'ID_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO CLIENTE (ALUNO)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'NM_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ENDEREÇO DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UF DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEXO DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'SEXO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TELEFONE DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'TELEFONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPF DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RG DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'RG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EMAIL DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CLIENTE', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'ID_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'NM_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TEMPO DE DE DURAÇÃO DO CURSO (SEMESTRES)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'TEMPO_DURACAO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO DO CURSO (EXATAS, HUMANAS, TECNOLOGIA ETC.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'TIPO_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DEFINE SE O CURSO É EAD, PRESENCIAL OU SEMIPRESENCIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'MODALIDADE_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VALOR DA MENSALIDADE DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_CURSO', @level2type=N'COLUMN',@level2name=N'VALOR_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'ID_CADASTRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'NM_ALUNO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ENDEREÇO DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'ENDERECO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CIDADE DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'CIDADE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UF DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'UF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TELEFONE DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'TELEFONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CPF DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'CPF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RG DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'RG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EMAIL DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DATA DE NASCIMENTO DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'DT_NASCIMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PARA SABER SE A PESSOA TEM ALGUM TIPO DE DEFICIENCIA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'DEFICIENCIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SEXO DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'SEXO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESTADO CIVIL DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'ESTADO_CIVIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DA MAE DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'NOME_MAE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO PAI DO CADASTRO REALIZADO NO SITE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'NOME_PAI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CURSO DE INTERESSE DA PESSOA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'CURSO_INTERESSE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CANAL DE CONTATO DA PROSPECÇÃO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'CANAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TEMPO DE TELA AO QUAL A PESSOA FICOU NA TELA DE CADASTRO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'TEMPO_TELA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QUANTOS CLIQUES A PESSOA DEU NOS BOTOES DO CADASTRO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PROSPECCAO', @level2type=N'COLUMN',@level2name=N'INTERACOES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DA VENDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'ID_VENDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DATA E HORA QUE FOI EFETUADA A VENDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'DATA_HORA_VENDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'ID_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'NM_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'ID_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NOME DO CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'NM_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CANAL AO QUAL FOI FEITA A MATRICULA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'CANAL_VENDAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SE O CURSO É EAD, PRESENCIAL OU SEMI-PRESENCIAL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'MODALIDADE_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VALOR DA MENSALIDADE DO CURSO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'VALOR_CURSO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VALOR QUE O CLIENTE TERÁ DE DESCONTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'VALOR_DESCONTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SE O DESCONTO FOI FEITO PELO SITE, ENEM ETC.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'TIPO_DESCONTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UM BREVE RESUMO DO PORQUE FOI DADO O DESCONTO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'DESC_DESCONTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'VALOR LIQUIDO DA MATRICULA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_VENDAS', @level2type=N'COLUMN',@level2name=N'VALOR_LIQUIDO'
GO
