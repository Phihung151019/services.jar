.class Lcom/android/server/tracing/TracingServiceProxy$2;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/os/IMessenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$2;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    move-object p1, p2

    move-object p2, p3

    const/16 p3, 0x21

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public final getRequestTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x2710

    return-wide v0
.end method
