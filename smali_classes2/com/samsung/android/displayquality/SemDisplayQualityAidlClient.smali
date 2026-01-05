.class public Lcom/samsung/android/displayquality/SemDisplayQualityAidlClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final RESULT_DISABLED:I = 0x0

.field public static final RESULT_ENABLED:I = 0x1

.field public static final RESULT_FAILURE:I = 0x2

.field public static final RESULT_NO_SUPPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemDisplayQualityAidlClientDummy"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p0, "SemDisplayQualityAidlClientDummy"

    const-string/jumbo v0, "SemDisplayQualityAidlClient dummy"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public setOutdoorVisibilityEnhancerEnabled(Z)I
    .locals 0

    const-string/jumbo p0, "SemDisplayQualityAidlClientDummy"

    const-string/jumbo p1, "setOutdoorVisibilityEnhancerEnabled dummy"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
