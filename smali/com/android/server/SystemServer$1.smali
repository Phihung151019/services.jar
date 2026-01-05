.class public final Lcom/android/server/SystemServer$1;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$myTid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget p0, p0, Lcom/android/server/SystemServer$1;->val$myTid:I

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method
