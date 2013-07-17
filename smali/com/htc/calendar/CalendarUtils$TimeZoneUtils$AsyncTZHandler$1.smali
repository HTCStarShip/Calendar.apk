.class Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;
.super Ljava/lang/Object;
.source "CalendarUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field final synthetic val$c:Ljava/lang/Object;

.field final synthetic val$cr:Landroid/database/Cursor;

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->this$1:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    iput p2, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$t:I

    iput-object p3, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$cr:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->this$1:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    iget v2, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$t:I

    iget-object v3, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$c:Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler$1;->val$cr:Landroid/database/Cursor;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->doQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CalendarUtils"

    const-string v2, "doQueryComplete exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
