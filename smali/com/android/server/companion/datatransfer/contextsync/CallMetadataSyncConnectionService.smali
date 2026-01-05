.class public Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;
.super Landroid/telecom/ConnectionService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field final mActiveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;",
            "Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field public mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

.field final mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

.field mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCrossDeviceSyncControllerCallback:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->registerCallMetadataSyncCallback(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;I)V

    return-void
.end method

.method public final onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .locals 6

    instance-of v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    move v0, v5

    goto :goto_0

    :pswitch_1
    move v0, v4

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_4
    move v0, v3

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Connection;->setRinging()V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/telecom/Connection;->setActive()V

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/telecom/Connection;->setOnHold()V

    goto :goto_1

    :cond_3
    if-ne v0, v4, :cond_4

    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_1

    :cond_4
    if-ne v0, v5, :cond_5

    invoke-virtual {p1}, Landroid/telecom/Connection;->setDialing()V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/telecom/Connection;->setInitialized()V

    :goto_1
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0, v5}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "custom"

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    const-string/jumbo v3, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v2, v4}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/2addr v0, v5

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v0, -0x2

    :goto_2
    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-virtual {v2, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    goto :goto_3

    :cond_8
    and-int/lit8 v0, v0, -0x41

    :goto_3
    iget-object v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->hasControl(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    :cond_9
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mActiveConnections:Ljava/util/Map;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    iget v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    iget-object v2, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    iget-object v2, v2, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 8

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.CALLER_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.APP_ICON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_NAME"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.android.server.companion.datatransfer.contextsync.extra.FACILITATOR_EXT_ID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.STATUS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    const-string/jumbo v2, "com.android.server.companion.datatransfer.contextsync.extra.DIRECTION"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    new-instance v2, Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.CONTROLS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    iput p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;I)V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Landroid/telecom/Connection;->setConnectionProperties(I)V

    invoke-virtual {v1}, Landroid/telecom/Connection;->setInitializing()V

    return-object v1
.end method

.method public final onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    :goto_0
    const-string/jumbo p1, "onCreateOutgoingConnectionFailed for: "

    const-string p2, "CallMetadataSyncConnectionService"

    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 7

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    new-instance v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {v5}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "com.android.companion.datatransfer.contextsync.extra.CALL_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "com.android.server.companion.datatransfer.contextsync.extra.CALL_FACILITATOR_ID"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v4, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    const/4 p1, 0x2

    iput p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "com.android.server.companion.datatransfer.contextsync.extra.ASSOCIATION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "com.android.server.companion.datatransfer.contextsync.extra.CALL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    iget-object v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;

    const/4 p1, 0x1

    invoke-direct {v6, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;I)V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;-><init>(Landroid/telecom/TelecomManager;Landroid/media/AudioManager;ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionCallback;)V

    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object v0, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mSelfOwnedCalls:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService;->mCdmsi:Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    iget-object p1, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v5, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    :cond_4
    invoke-virtual {v1}, Landroid/telecom/Connection;->setInitializing()V

    return-object v1
.end method

.method public final onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unknown PhoneAccount"

    :goto_0
    const-string/jumbo p1, "onCreateOutgoingConnectionFailed for: "

    const-string p2, "CallMetadataSyncConnectionService"

    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
