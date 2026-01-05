.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAttributionChainId:I

.field public final mAttributionFlags:I

.field public final mNoteDuration:J

.field public final mNoteTime:J

.field public final mOpFlag:I

.field public final mUidState:I


# direct methods
.method public constructor <init>(IIJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iput-wide p5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    iput p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iput p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iput p7, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iput p8, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    return-void
.end method
