.class public final Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;
.super Landroid/os/HandlerThread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/OlafRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/OlafRestriction;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    const-string/jumbo p1, "OlafRestriction_lockHandler"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    new-instance v1, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/job/restrictions/OlafRestriction;->mHandleLockHandler:Lcom/android/server/job/restrictions/OlafRestriction$HandleLockHandler;

    return-void
.end method
