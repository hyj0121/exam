from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
import time


chrome_options = Options()
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()),
                          options=chrome_options)

try:
    driver.get("https://www.saucedemo.com/")


    driver.find_element(By.ID, "user-name").send_keys("standard_user")
    driver.find_element(By.ID, "password").send_keys("secret_sauce")
    driver.find_element(By.ID, "login-button").click()

    time.sleep(1.5)

    desc_elems = driver.find_elements(By.CSS_SELECTOR, ".inventory_item_description .inventory_item_desc")

    print("=== 상품 설명 목록 ===")
    for i, elem in enumerate(desc_elems, start=1):
        text = elem.text.strip()
        print(f"{i}. {text}")

finally:
    driver.quit()
