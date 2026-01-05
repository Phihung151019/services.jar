.class public final Lcom/android/server/knox/zt/devicetrust/data/ScData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScData"


# instance fields
.field public final data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

.field public final nr:I


# direct methods
.method public constructor <init>(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    return-void
.end method


# virtual methods
.method public final adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEvent()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getEvent()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFchmodData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFchmodatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFchownData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFchownatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMemfdCreateData()Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPid()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getUid()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final printCastError()V
    .locals 3

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not castable(NR : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 2

    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x117

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchownData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchownatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchmodatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchmodData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getMemfdCreateData()Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
