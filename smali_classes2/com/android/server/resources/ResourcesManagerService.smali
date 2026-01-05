.class public Lcom/android/server/resources/ResourcesManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mService:Lcom/android/server/resources/ResourcesManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/resources/ResourcesManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/resources/ResourcesManagerService$1;-><init>(Lcom/android/server/resources/ResourcesManagerService;)V

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService;->mService:Lcom/android/server/resources/ResourcesManagerService$1;

    const-string/jumbo v0, "resources"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 0

    invoke-static {}, Landroid/content/res/ResourceTimer;->start()V

    return-void
.end method
