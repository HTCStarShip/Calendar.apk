.class Lcom/htc/calendar/CalendarApplication$1;
.super Ljava/lang/Object;
.source "CalendarApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarApplication;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/htc/calendar/CalendarApplication$1;->this$0:Lcom/htc/calendar/CalendarApplication;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$1;->this$0:Lcom/htc/calendar/CalendarApplication;

    const v1, 0x7f050002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/preference/HtcPreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 92
    iget-object v0, p0, Lcom/htc/calendar/CalendarApplication$1;->this$0:Lcom/htc/calendar/CalendarApplication;

    invoke-static {v0}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 93
    return-void
.end method
