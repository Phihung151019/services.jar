.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIoLooper:Landroid/os/Looper;

.field public final mLooper:Landroid/os/Looper;

.field public final mUEventManager:Lcom/android/server/input/InputManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    return-void
.end method
