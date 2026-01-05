.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;
.super Landroid/telecom/InCallService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

.field public final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

.field final mCurrentCalls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Call;",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;"
        }
    .end annotation
.end field

.field mNumberOfActiveSyncAssociations:I

.field public final mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    return-void
.end method


# virtual methods
.method public getCallForId(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;)",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    iget-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    :cond_0
    return-void
.end method

.method public final onCallRemoved(Landroid/telecom/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$2;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    :cond_0
    return-void
.end method

.method public final onMuteStateChanged(Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    :cond_1
    return-void
.end method

.method public final onSilenceRinger()V
    .locals 3

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->sendCrossDeviceSyncMessageToAllDevices(I[B)V

    :cond_0
    return-void
.end method

.method public final sync(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/companion/AssociationInfo;

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-static {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "CrossDeviceSyncController"

    const-string/jumbo p1, "No eligible devices to sync to"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    const v1, 0x63678883

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    :cond_3
    return-void
.end method
