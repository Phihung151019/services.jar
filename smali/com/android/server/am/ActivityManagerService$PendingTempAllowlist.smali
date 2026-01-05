.class public final Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final callingUid:I

.field public final duration:J

.field public final reasonCode:I

.field public final tag:Ljava/lang/String;

.field public final targetUid:I

.field public final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->targetUid:I

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->duration:J

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->tag:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->type:I

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->reasonCode:I

    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingTempAllowlist;->callingUid:I

    return-void
.end method
