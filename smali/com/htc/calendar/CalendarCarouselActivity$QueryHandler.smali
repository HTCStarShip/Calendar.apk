.class Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarCarouselActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    .line 534
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 535
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    new-instance v2, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;

    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-direct {v2, v3, p3}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V

    .line 543
    .local v2, thread:Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OnQueryCmplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->setName(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v2}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->start()V

    .line 590
    .end local v2           #thread:Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v3, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iput-object v4, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    .line 553
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v3, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    if-eqz v3, :cond_3

    .line 554
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iput-object v4, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    .line 558
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;

    move-result-object v1

    .line 559
    .local v1, preCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 560
    new-instance v2, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;

    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-direct {v2, v3, v1}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V

    .line 561
    .restart local v2       #thread:Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OnQueryCmplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->setName(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v2}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->start()V

    .line 566
    .end local v2           #thread:Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #setter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3, p3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$202(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 567
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;

    move-result-object v4

    #calls: Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarNameMap(Landroid/database/Cursor;)V
    invoke-static {v3, v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$300(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V

    .line 571
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    new-instance v4, Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/calendar/CalendarCarouselActivity;->access$400(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f03002a

    invoke-direct {v4, v5, v6}, Lcom/htc/calendar/MultiCalendarsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    .line 572
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    new-instance v4, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/calendar/CalendarCarouselActivity;->access$400(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v6, v6, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-direct {v4, v5, v6}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;-><init>(Landroid/content/Context;Lcom/htc/calendar/MultiCalendarsAdapter;)V

    iput-object v4, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    .line 573
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v3, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->calculateCalendars(Landroid/database/Cursor;)V

    .line 574
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v3, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 575
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v3, v3, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v3, v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->setParentActivity(Landroid/app/Activity;)V

    .line 576
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v4, v4, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->getSelectedCalendarHashMap()Lcom/htc/calendar/SyncedHashMap;

    move-result-object v4

    #setter for: Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;
    invoke-static {v3, v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$502(Lcom/htc/calendar/CalendarCarouselActivity;Lcom/htc/calendar/SyncedHashMap;)Lcom/htc/calendar/SyncedHashMap;

    .line 578
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$600(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v4, v4, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 580
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$700(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    iget-object v4, v4, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$700(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 583
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #calls: Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle()V
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$800(Lcom/htc/calendar/CalendarCarouselActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
