.class public Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKnoxAnalyticsActivation(Z)V
    .locals 1

    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onKnoxAnalyticsActivation()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    return-void
.end method

.method public final onKnoxAnalyticsDeactivation(Z)V
    .locals 1

    sget-object p1, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onKnoxAnalyticsDeactivation()"

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl$1;->this$0:Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/service/KnoxAnalyticsServiceImpl;->mIsKnoxAnalyticsActivated:Z

    return-void
.end method

.method public final onStatusChanged(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onTriggerChanged(IZLjava/lang/String;)V
    .locals 0

    return-void
.end method
