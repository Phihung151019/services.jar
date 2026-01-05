.class public final Lcom/android/server/companion/association/Associations;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAssociations:Ljava/util/List;

.field public mMaxId:I

.field public mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/companion/association/Associations;->mVersion:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    iput v0, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    return-void
.end method
