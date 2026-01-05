.class public final Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public severity:I

.field public final severityType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    iput p1, p0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severityType:I

    return-void
.end method
