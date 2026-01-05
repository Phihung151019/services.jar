.class public final Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;
.super Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

.field public final mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextManagerService;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const-string p0, "Created WearableAmbientContextManagerPerUserServiceand service type: WEARABLE and service name: "

    const-string/jumbo p1, "WearableAmbientContextManagerPerUserService"

    invoke-static {p0, p4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clearRemoteService()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    return-void
.end method

.method public final ensureRemoteServiceInitiated()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.service.wearable.WearableSensingService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    new-instance v6, Lcom/android/server/ambientcontext/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const v4, 0x4001000

    iget v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    iput-object v1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    :cond_0
    return-void
.end method

.method public final getAmbientContextEventArrayExtraKeyConfig()I
    .locals 0

    const p0, 0x10403f4

    return p0
.end method

.method public final getAmbientContextPackageNameExtraKeyConfig()I
    .locals 0

    const p0, 0x10403f5

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getConsentComponentConfig()I
    .locals 0

    const p0, 0x104034d

    return p0
.end method

.method public final getProtectedBindPermission()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    return-object p0
.end method

.method public final getRemoteService()Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mRemoteService:Lcom/android/server/ambientcontext/RemoteWearableSensingService;

    return-object p0
.end method

.method public final getServiceType()Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mServiceType:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    return-object p0
.end method

.method public final setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ambientcontext/WearableAmbientContextManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method
