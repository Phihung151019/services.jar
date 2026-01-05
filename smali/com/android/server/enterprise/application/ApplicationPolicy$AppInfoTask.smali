.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mCmd:Ljava/lang/String;

.field public final mUsage:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    iget-wide v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sub-long/2addr v0, v2

    long-to-int p0, v0

    neg-int p0, p0

    return p0
.end method
