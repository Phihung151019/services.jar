.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;
.super Landroid/os/IUserRestrictionsListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

.field public final synthetic val$mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    iput-object p2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/IUserRestrictionsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
