.class public final Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAllSeenNotificationKeys:Landroid/util/ArraySet;

.field public final mIsExempted:Z

.field public final mSeenOtpNotificationKeys:Landroid/util/ArraySet;

.field public final mSessionId:J

.field public final mUid:I


# direct methods
.method public constructor <init>(IJZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mAllSeenNotificationKeys:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSeenOtpNotificationKeys:Landroid/util/ArraySet;

    iput p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mUid:I

    iput-boolean p4, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mIsExempted:Z

    iput-wide p2, p0, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->mSessionId:J

    return-void
.end method
