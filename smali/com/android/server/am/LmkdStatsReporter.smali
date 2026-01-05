.class public abstract Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static logKillOccurred(Ljava/io/DataInputStream;II)V
    .locals 26

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    packed-switch v0, :pswitch_data_0

    const/16 v22, 0x0

    :goto_0
    move/from16 v23, v0

    goto :goto_1

    :pswitch_0
    const/16 v22, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v22, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v22, 0x8

    goto :goto_0

    :pswitch_3
    const/16 v22, 0x7

    goto :goto_0

    :pswitch_4
    const/16 v22, 0x6

    goto :goto_0

    :pswitch_5
    const/16 v22, 0x5

    goto :goto_0

    :pswitch_6
    const/16 v22, 0x4

    goto :goto_0

    :pswitch_7
    const/16 v22, 0x3

    goto :goto_0

    :pswitch_8
    const/16 v22, 0x2

    goto :goto_0

    :pswitch_9
    const/16 v22, 0x1

    goto :goto_0

    :goto_1
    const/16 v0, 0x33

    move/from16 v25, v2

    move-object/from16 v2, v19

    move/from16 v19, v22

    move/from16 v24, v23

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-static/range {v0 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIIIII)V

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v3, v1, v0}, Lcom/android/server/am/SecLmkdStats;->noteLmkKillOccurred(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "ActivityManager"

    const-string v1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
