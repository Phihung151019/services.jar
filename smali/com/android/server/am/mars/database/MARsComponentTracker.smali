.class public final Lcom/android/server/am/mars/database/MARsComponentTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public isEnabledCT:Z


# direct methods
.method public static sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string/jumbo v12, "android"

    if-eqz v1, :cond_1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move v13, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v11

    :goto_1
    const-string/jumbo v14, "system"

    if-eqz v13, :cond_2

    move-object/from16 v19, v14

    goto :goto_2

    :cond_2
    move-object/from16 v19, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v17, v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v17, v14

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_5
    move v0, v9

    goto/16 :goto_6

    :sswitch_0
    const-string/jumbo v0, "startService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v3

    goto :goto_6

    :sswitch_1
    const-string/jumbo v0, "bindService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v4

    goto :goto_6

    :sswitch_2
    const-string/jumbo v0, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v5

    goto :goto_6

    :sswitch_3
    const-string/jumbo v0, "job"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v6

    goto :goto_6

    :sswitch_4
    const-string/jumbo v0, "provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move v0, v7

    goto :goto_6

    :sswitch_5
    const-string/jumbo v0, "backup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v8

    goto :goto_6

    :sswitch_6
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    move v0, v11

    goto :goto_6

    :sswitch_7
    const-string/jumbo v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move v0, v10

    :goto_6
    packed-switch v0, :pswitch_data_0

    move/from16 v20, v9

    goto :goto_7

    :pswitch_0
    move/from16 v20, v11

    goto :goto_7

    :pswitch_1
    move/from16 v20, v8

    goto :goto_7

    :pswitch_2
    move/from16 v20, v4

    goto :goto_7

    :pswitch_3
    move/from16 v20, v3

    goto :goto_7

    :pswitch_4
    move/from16 v20, v7

    goto :goto_7

    :pswitch_5
    move/from16 v20, v5

    goto :goto_7

    :pswitch_6
    move/from16 v20, v6

    goto :goto_7

    :pswitch_7
    move/from16 v20, v10

    :goto_7
    const v15, 0x18768

    move/from16 v16, p3

    move-object/from16 v21, p4

    move/from16 v18, p5

    move-object/from16 v22, p6

    invoke-static/range {v15 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_7
        -0x607e173f -> :sswitch_6
        -0x533f8a3e -> :sswitch_5
        -0x3adbfa0f -> :sswitch_4
        0x19bbd -> :sswitch_3
        0x5897a51 -> :sswitch_2
        0x54856bb8 -> :sswitch_1
        0x6e4047f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
