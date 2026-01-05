.class public final Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    iput p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public final onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegedApps:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
