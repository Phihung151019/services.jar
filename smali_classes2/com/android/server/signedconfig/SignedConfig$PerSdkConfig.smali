.class public final Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final maxSdk:I

.field public final minSdk:I

.field public final values:Ljava/util/Map;


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    iput p2, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    return-void
.end method
