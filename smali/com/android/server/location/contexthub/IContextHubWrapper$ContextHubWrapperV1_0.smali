.class public final Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;
.super Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public mHub:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/contexthub/V1_0/IContexthub;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperHidl;-><init>(Landroid/hardware/contexthub/V1_0/IContexthub;)V

    return-void
.end method

.method private final onAirplaneModeSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    return-void
.end method

.method private final onAirplaneModeSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    return-void
.end method

.method private final onLocationSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    return-void
.end method

.method private final onMicrophoneSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    return-void
.end method

.method private final onMicrophoneSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    return-void
.end method

.method private final onWifiSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_0(Z)V
    .locals 0

    return-void
.end method

.method private final onWifiSettingChanged$com$android$server$location$contexthub$IContextHubWrapper$ContextHubWrapperV1_1(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getContextHubs()Landroid/util/Pair;
    .locals 5

    iget v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/contexthub/V1_1/IContexthub;

    invoke-interface {p0}, Landroid/hardware/contexthub/V1_1/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {p0}, Landroid/hardware/contexthub/V1_0/IContexthub;->getHubs()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/contexthub/V1_0/ContextHub;

    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v3}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAirplaneModeSettingChanged(Z)V
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    return-void
.end method

.method public final onLocationSettingChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->mHub:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/contexthub/V1_1/IContexthub;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/hardware/contexthub/V1_1/IContexthub;->onSettingChanged(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IContextHubWrapper"

    const-string v0, "Failed to send setting change to Contexthub"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMicrophoneSettingChanged(Z)V
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    return-void
.end method

.method public final onWifiSettingChanged(Z)V
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    return-void
.end method

.method public final supportsAirplaneModeSettingNotifications()Z
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsLocationSettingNotifications()Z
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsMicrophoneSettingNotifications()Z
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsWifiSettingNotifications()Z
    .locals 0

    iget p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperV1_0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
