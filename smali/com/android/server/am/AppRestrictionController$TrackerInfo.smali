.class public final Lcom/android/server/am/AppRestrictionController$TrackerInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInfo:[B

.field public final mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mType:I

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$TrackerInfo;->mInfo:[B

    return-void
.end method
