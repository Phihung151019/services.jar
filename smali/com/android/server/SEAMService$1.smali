.class public final Lcom/android/server/SEAMService$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    const-string/jumbo p1, "Service Keeper Thread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/SEAMService$1;->this$0:Lcom/android/server/SEAMService;

    iget-object p0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/SEAMService$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
