*** Settings ***
Library    OperatingSystem
Library    Collections

*** Keywords ***
Load Test Data From JSON
    [Arguments]    ${file_path}
    # อ่านไฟล์ JSON เป็นข้อความธรรมดา
    ${json_string}=    Get File    ${EXECDIR}/${file_path}
    # แปลงข้อความเป็น Object โดยใช้ json.loads ของ Python
    ${json_data}=      Evaluate    json.loads('''${json_string}''')    json
    RETURN    ${json_data}