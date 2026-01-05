.class public final Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# virtual methods
.method public final getSQLDeclaration()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v3, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, " DEFAULT "

    invoke-static {v0, v1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
