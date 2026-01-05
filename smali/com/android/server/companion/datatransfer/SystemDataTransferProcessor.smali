.class public final Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionDeviceDataTransferActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mOnSystemDataTransferRequestConfirmationReceiver:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mOnSystemDataTransferRequestConfirmationReceiver:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p4, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    iput-object p5, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    new-instance p2, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;

    invoke-direct {p2, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;)V

    const p3, 0x63826983

    invoke-virtual {p5, p3, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    const-class p2, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const p2, 0x104030d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".CompanionDeviceDataTransferActivity"

    invoke-static {p1, p2}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mCompanionDeviceDataTransferActivity:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    instance-of v2, v1, Landroid/companion/datatransfer/PermissionSyncRequest;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/companion/datatransfer/PermissionSyncRequest;

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
