.class public final Lcom/android/server/people/data/Event$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDurationSeconds:I

.field public mTimestamp:J

.field public mType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/people/data/Event$Builder;->mTimestamp:J

    iput p3, p0, Lcom/android/server/people/data/Event$Builder;->mType:I

    return-void
.end method
