.class public final Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallingUid:I

.field public final mDuration:J

.field public final mReason:Ljava/lang/String;

.field public final mReasonCode:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    return-void
.end method
