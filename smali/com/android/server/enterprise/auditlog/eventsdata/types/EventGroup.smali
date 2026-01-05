.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final group:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string/jumbo p0, "Unknown group"

    const-string p1, "EventGroup"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput v1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return-void

    :cond_1
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return-void

    :cond_2
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return-void

    :cond_3
    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return-void

    :cond_4
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    return-void
.end method
