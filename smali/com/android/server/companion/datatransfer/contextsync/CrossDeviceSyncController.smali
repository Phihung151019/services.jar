.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBlocklist:Ljava/util/Set;

.field public final mCallFacilitators:Ljava/util/List;

.field public final mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

.field public final mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

.field public final mConnectedAssociations:Ljava/util/List;

.field public mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mContext:Landroid/content/Context;

.field public mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

.field public final mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;


# direct methods
.method public static -$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mCallIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectionServiceCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->cleanUpCallIds(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    invoke-virtual {p2, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$2;-><init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V

    const v1, 0x63678883

    invoke-virtual {p2, v1, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    new-instance p2, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    invoke-direct {p2, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    return-void
.end method

.method public static createCallControlMessage(ILjava/lang/String;)[B
    .locals 9

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10500000001L

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x20b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000002L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10900000001L

    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10e00000002L

    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x10500000001L

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x20b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000001L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10900000001L

    invoke-virtual {v0, v7, v8, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x10900000002L

    invoke-virtual {v0, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide p0, 0x10b00000003L

    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p0

    invoke-virtual {v0, v7, v8, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static isAssociationBlocked(Landroid/companion/AssociationInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;
    .locals 3

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled field in ControlAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10e00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mControl:I

    goto :goto_0

    :cond_1
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;->mId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;
    .locals 4

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled field in CreateAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10b00000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    invoke-static {p0}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_0

    :cond_1
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mAddress:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;->mId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;
    .locals 3

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled field in Facilitator:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrossDeviceSyncController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-wide v1, 0x10900000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public createCallUpdateMessage(Ljava/util/Collection;I)[B
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;",
            ">;I)[B"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v2, 0x10500000001L

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide v10, 0x10900000001L

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    iget-boolean v12, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsCallPlacedByContextSync:Z

    if-nez v12, :cond_0

    iget-object v12, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;

    iget-object v12, v12, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$CallManager;->mExternallyOwnedCalls:Ljava/util/Set;

    iget-object v13, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mId:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    const-wide v14, 0x20b00000001L

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v12, 0x10b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget-object v6, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    iget v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mUserId:I

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result v6

    iget-boolean v7, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mIsEnterprise:Z

    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget-object v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->getNonContactString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mContactDisplayName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10c00000002L

    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppIcon:[B

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v6, 0x10b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mCallingAppPackageName:Ljava/lang/String;

    const-wide v9, 0x10900000002L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v8, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mSerializedPhoneAccountHandle:Ljava/lang/String;

    const-wide v9, 0x10900000003L

    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mStatus:I

    const-wide v7, 0x10e00000003L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v6, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mDirection:I

    const-wide v7, 0x10e00000005L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->mControls:Ljava/util/Set;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-wide v7, 0x20e00000004L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    const-wide v7, 0x20b00000003L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v9, v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIdentifier:Ljava/lang/String;

    const-wide v12, 0x10900000002L

    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mExtendedIdentifier:Ljava/lang/String;

    const-wide v14, 0x10900000003L

    invoke-virtual {v1, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final isAssociationBlockedLocal(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    invoke-direct {p0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const-wide v2, 0x10900000001L

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const-string v5, "CrossDeviceSyncController"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unhandled field in Telecom:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide v0, 0x10e00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mDirection:I

    goto :goto_0

    :cond_1
    const-wide v0, 0x20e00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mControls:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-wide v0, 0x10e00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mStatus:I

    goto :goto_0

    :cond_3
    const-wide v8, 0x10b00000002L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    if-eq v0, v4, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unhandled field in Origin:"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-wide v10, 0x10b00000003L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    invoke-static {p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mFacilitator:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :cond_5
    const-wide v10, 0x10c00000002L

    invoke-virtual {p1, v10, v11}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mAppIcon:[B

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mCallerId:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method

.method public processTelecomDataFromSync([B)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;
    .locals 14

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    invoke-direct {v0}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;-><init>()V

    new-instance v1, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    const/4 p1, -0x1

    move v2, p1

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_a

    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "CrossDeviceSyncController"

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unhandled field in ContextSyncMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne v2, v5, :cond_8

    const-wide v6, 0x10b00000004L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    :goto_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_7

    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    if-ne v3, v5, :cond_1

    const-wide v8, 0x20b00000001L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    invoke-virtual {p0, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    move-result-object v3

    iget-object v10, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    iget-object v11, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_5

    const-wide v9, 0x20b00000002L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9

    :goto_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    if-eq v3, p1, :cond_4

    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    if-eq v3, v5, :cond_3

    if-eq v3, v8, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unhandled field in Request:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-wide v11, 0x10b00000002L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallControlRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallControlRequest;

    move-result-object v3

    iget-object v13, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallControlRequests:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2

    :cond_3
    const-wide v11, 0x10b00000001L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processCallCreateRequestDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallCreateRequest;

    move-result-object v3

    iget-object v13, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallCreateRequests:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    const-wide v8, 0x20b00000003L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v8

    invoke-static {v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->processFacilitatorDataFromSync(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;->mIsTel:Z

    iget-object v10, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCallFacilitators:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unhandled field in Telecom:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot process unsupported version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Processing context sync message version "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final syncMessageToDevice(I[B)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CrossDeviceSyncController"

    const-string p1, "Cannot sync to requested device; connection is blocked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    filled-new-array {p1}, [I

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCompanionTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    const v0, 0x63678883

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    return-void
.end method
