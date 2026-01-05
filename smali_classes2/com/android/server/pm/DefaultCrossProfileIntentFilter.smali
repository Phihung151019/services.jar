.class public final Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final direction:I

.field public final filter:Lcom/android/server/pm/WatchedIntentFilter;

.field public final flags:I

.field public final letsPersonalDataIntoProfile:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->filter:Lcom/android/server/pm/WatchedIntentFilter;

    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->flags:I

    iput p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->direction:I

    iput-boolean p4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;->letsPersonalDataIntoProfile:Z

    return-void
.end method
