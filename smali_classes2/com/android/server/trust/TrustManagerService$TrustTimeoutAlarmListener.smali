.class public abstract Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public mIsQueued:Z

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    iput p2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    return-void
.end method


# virtual methods
.method public abstract handleAlarm()V
.end method

.method public final onAlarm()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->handleAlarm()V

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x100

    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_0
    return-void
.end method
