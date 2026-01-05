.class public final Lcom/android/server/wm/AppCompatFocusOverrides;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatFocusOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    const-string/jumbo p2, "android.window.PROPERTY_COMPAT_ENABLE_FAKE_FOCUS"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatFocusOverrides;->mFakeFocusOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method
