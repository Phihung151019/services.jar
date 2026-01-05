.class public final Lcom/android/server/SystemServer$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$reboot:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/SystemServer$4;->val$reboot:Z

    iput-object p1, p0, Lcom/android/server/SystemServer$4;->val$reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/SystemServer$4;->val$reboot:Z

    iget-object p0, p0, Lcom/android/server/SystemServer$4;->val$reason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
