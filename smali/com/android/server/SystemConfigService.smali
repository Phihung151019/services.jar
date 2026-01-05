.class public Lcom/android/server/SystemConfigService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/SystemConfigService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/SystemConfigService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemConfigService$1;-><init>(Lcom/android/server/SystemConfigService;)V

    iput-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Lcom/android/server/SystemConfigService$1;

    iput-object p1, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Lcom/android/server/SystemConfigService$1;

    const-string/jumbo v1, "system_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
