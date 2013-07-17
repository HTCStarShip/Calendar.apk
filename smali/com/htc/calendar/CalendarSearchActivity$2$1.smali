.class Lcom/htc/calendar/CalendarSearchActivity$2$1;
.super Ljava/lang/Object;
.source "CalendarSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarSearchActivity$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/CalendarSearchActivity$2;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarSearchActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity$2$1;->this$1:Lcom/htc/calendar/CalendarSearchActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity$2$1;->this$1:Lcom/htc/calendar/CalendarSearchActivity$2;

    iget-object v0, v0, Lcom/htc/calendar/CalendarSearchActivity$2;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    const-string v1, ""

    #setter for: Lcom/htc/calendar/CalendarSearchActivity;->mPreviousQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarSearchActivity;->access$802(Lcom/htc/calendar/CalendarSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/htc/calendar/CalendarSearchActivity$2$1;->this$1:Lcom/htc/calendar/CalendarSearchActivity$2;

    iget-object v0, v0, Lcom/htc/calendar/CalendarSearchActivity$2;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #calls: Lcom/htc/calendar/CalendarSearchActivity;->doingQuery()V
    invoke-static {v0}, Lcom/htc/calendar/CalendarSearchActivity;->access$700(Lcom/htc/calendar/CalendarSearchActivity;)V

    .line 307
    return-void
.end method
