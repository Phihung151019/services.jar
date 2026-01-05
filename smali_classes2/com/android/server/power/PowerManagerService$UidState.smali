.class public final Lcom/android/server/power/PowerManagerService$UidState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActive:Z

.field public mNumWakeLocks:I

.field public mProcState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    return-void
.end method
