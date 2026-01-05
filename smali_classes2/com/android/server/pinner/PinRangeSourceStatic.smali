.class public final Lcom/android/server/pinner/PinRangeSourceStatic;
.super Lcom/android/server/pinner/PinRangeSource;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDone:Z


# virtual methods
.method public final read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I

    iget-boolean p1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
