.class public final Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AutoDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AutoDisableHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    const-string p1, "AutoDisableThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object p0, p0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->this$0:Lcom/android/server/pm/AutoDisableHandler;

    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
