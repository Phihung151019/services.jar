.class public final Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# virtual methods
.method public final read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 0

    new-instance p0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    invoke-static {p1}, Landroid/os/BatteryUsageStats;->createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    return-object p0
.end method
