.class public abstract Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "sleep_pattern_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
