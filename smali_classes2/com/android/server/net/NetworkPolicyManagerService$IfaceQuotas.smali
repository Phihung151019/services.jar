.class public final Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final iface:Ljava/lang/String;

.field public final limit:J

.field public final warning:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    return-void
.end method
