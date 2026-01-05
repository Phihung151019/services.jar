.class public final Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

.field public final mParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/EdmStorageHelper$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    iput-object p2, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    return-void
.end method


# virtual methods
.method public final parseXML()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    const/4 v4, 0x2

    const-string/jumbo v5, "table"

    if-eq v0, v4, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mCallback:Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->onTableFound(Lcom/android/server/enterprise/storage/Table;)V

    move-object v2, v1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v5, "name"

    if-eqz v4, :cond_2

    :try_start_2
    new-instance v2, Lcom/android/server/enterprise/storage/Table;

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "foreignrefertable"

    invoke-interface {v6, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v8, "foreignreferkey"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v9, "foreignkeyname"

    invoke-interface {v8, v1, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v2, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    iput-object v4, v2, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    iput-object v6, v2, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    :cond_2
    const-string/jumbo v4, "column"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    new-instance v0, Lcom/android/server/enterprise/storage/Column;

    iget-object v4, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v4, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v6, "type"

    invoke-interface {v5, v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "int"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "text"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "numeric"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "real"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v6, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "primarykey"

    invoke-interface {v5, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v7, "properties"

    invoke-interface {v5, v1, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    const-string/jumbo v8, "default"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    iput-boolean v3, v0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    iput-object v5, v0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->mParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    const-string v0, "EnterpriseXmlParser"

    const-string/jumbo v1, "parseXML EX:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method
