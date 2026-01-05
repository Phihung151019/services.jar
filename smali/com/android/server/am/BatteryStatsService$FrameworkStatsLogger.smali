.class public final Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public buildStatsEvent(JJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;
    .locals 20

    const/16 v1, 0x27e1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-wide/from16 v18, p17

    invoke-static/range {v1 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method
