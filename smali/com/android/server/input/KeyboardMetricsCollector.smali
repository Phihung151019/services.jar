.class public abstract Lcom/android/server/input/KeyboardMetricsCollector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_LANGUAGE_TAG:Ljava/lang/String; = "None"

.field static final DEFAULT_LAYOUT_NAME:Ljava/lang/String; = "Default"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyboardMetricCollector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    return-void
.end method
