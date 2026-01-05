.class public final Lcom/android/server/content/SyncManager$12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/content/SyncManager$12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/content/SyncManager$12;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/content/SyncManager$AccountSyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AccountSyncStats;

    iget p0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    iget v0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_0

    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    iget p0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget v0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-nez p0, :cond_1

    iget-wide v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget-wide p0, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_1
    return p0

    :pswitch_1
    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    check-cast p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object p0, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/content/SyncAdapterType;

    iget-object p0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/content/SyncAdapterType;

    iget-object p1, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
