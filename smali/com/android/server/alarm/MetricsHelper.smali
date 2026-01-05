.class public final Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    return-void
.end method
