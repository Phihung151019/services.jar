.class public final Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final info:Lcom/android/server/ContainerServiceInfo;

.field public mBound:Z

.field public final mConnection:Lcom/android/server/ContainerServiceWrapper$1;

.field public mContainerService:Lcom/samsung/android/knox/IContainerService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/ContainerServiceWrapper$2;

.field public final mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public final name:Landroid/content/ComponentName;

.field public final userid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    iget p1, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput p1, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final connect()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    const-string v1, "KnoxService::ContainerServiceWrapper"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already bound"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Lcom/android/server/ContainerServiceWrapper$1;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const v5, 0x4000001

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t bind to container service "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method
