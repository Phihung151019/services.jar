.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final actionChain:Ljava/lang/String;

.field public actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

.field public final firstParam:Ljava/lang/String;

.field public final jumpChain:Ljava/lang/String;

.field public final secondParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    return-void
.end method
