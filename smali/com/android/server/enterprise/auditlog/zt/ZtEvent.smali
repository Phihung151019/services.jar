.class public final Lcom/android/server/enterprise/auditlog/zt/ZtEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final bundle:Landroid/os/Bundle;

.field public final source:I

.field public final tag:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->source:I

    iput p2, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->tag:I

    iput-object p3, p0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->bundle:Landroid/os/Bundle;

    return-void
.end method
