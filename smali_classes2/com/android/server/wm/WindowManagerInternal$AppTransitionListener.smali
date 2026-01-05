.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTargetDisplayId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 0

    return-void
.end method

.method public abstract onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public onAppTransitionPendingLocked()V
    .locals 0

    return-void
.end method

.method public onAppTransitionStartingLocked(J)V
    .locals 0

    return-void
.end method
